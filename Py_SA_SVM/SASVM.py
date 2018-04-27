from pyspark.mllib.classification import SVMWithSGD, SVMModel
from pyspark.mllib.regression import LabeledPoint
from pyspark.mllib.util import MLUtils
from pyspark import SparkContext, SparkConf

sc = SparkContext.getOrCreate(SparkConf().setMaster("local[*]"))
examples = sc.parallelize("train.data")



print(examples.SVMWithSGD())

List((4))