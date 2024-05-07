## 存放各类数据的引用, 类似命名空间
#class_name Game
extends Node

#enum Side{dark, light}
enum Side{RedSide, BlueSide, FaceSide}
#const side:Array[StringName] = ['RedSide', 'BlueSide', 'FaceSide']
const BALL_SCN:PackedScene = preload("res://prefabs/ball.tscn")
