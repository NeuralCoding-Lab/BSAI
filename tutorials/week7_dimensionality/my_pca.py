import numpy as np
from numpy import linalg
from sklearn.utils.extmath import randomized_svd, svd_flip

class my_PCA_SVD:
    """
    PCA (Principle Component Analysis) implemented by SVD
    Reminder: input should be (n_samples, n_features)
    Reference: 
    https://github.com/scikit-learn/scikit-learn/blob/36958fb24/sklearn/decomposition/_base.py#L100
    https://github.com/scikit-learn/scikit-learn/blob/36958fb24/sklearn/decomposition/_pca.py#L116
    http://blog.codinglabs.org/articles/pca-tutorial.html
    """
    def __init__(
        self,
        n_components=None,
        centering = True
    ):
        self.n_components = n_components
        self.centering = centering

    def _fit(self, X):
        n_samples, n_features = X.shape
        self.n_samples_, self.n_features_ = n_samples, n_features
        if self.centering:
            self._mean = np.mean(X, axis=0)
        else:
            self._mean = np.zeros(n_features)
        X = X - self._mean
        if isinstance(self.n_components, int):
            U, S, Vt =  randomized_svd(X, n_components=self.n_components, n_oversamples=10,random_state=2022)
            self.eigenvector = Vt.T # 取ATA特征向量
            self.components_ = Vt
            self.eigenvalue = S*S  # 取ATA特征值
        elif self.n_components > 0 and self.n_components < 1:
            U, S, Vt = linalg.svd(X, full_matrices=False)
            U, Vt = svd_flip(U, Vt)
            components_ = Vt
            explained_variance_ = (S ** 2) / (n_samples - 1)
            total_var = explained_variance_.sum()
            explained_variance_ratio_ = explained_variance_ / total_var
            singular_values = S.copy()
            ratio_cumsum = np.cumsum(explained_variance_ratio_)
            n_components = np.searchsorted(ratio_cumsum, self.n_components) + 1
            self.components_ = components_[:n_components]
            self.eigenvalue = explained_variance_[:n_components]
            self.eigenvector = Vt.T[:n_components]
        return U, S, Vt

    def fit(self, X):
        self._fit(X)
        return self
        
    def transform(self, X):
        X = X- self._mean
        X_transformed = X @ self.components_.T # 将变量投影到特征向量中
        return X_transformed

    def inverse_transform(self, X):
        # 利用权重计算在原空间中降维后的结果
        return X @ self.components_ + self._mean
