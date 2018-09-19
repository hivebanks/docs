#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jul 10 10:27:43 2018

@author: pool
"""

import json, time, requests

#-------------------------------------block---------------------------------------

# 可以验证这个区块是否为孤儿区块
# get the blcok information
'''
和区块相关的api
返回最新块
https://chain.api.btc.com/v3/block/latest

返回最新块、高度为 3 的块
https://chain.api.btc.com/v3/block/latest,3
'''
def block_info():
    block = requests.get("https://chain.api.btc.com/v3/block/3")
    return block

print(block_info().json())



# 返回区块列表
#https://chain.api.btc.com/v3/block/date/20151215 
def block_list():
    blocks = requests.get("https://chain.api.btc.com/v3/block/date/20151215")
    return blocks

print(block_list().json())


# 返回区块交易列表
def block_tx_list():
    tx_list = requests.get("https://chain.api.btc.com/v3/block/latest/tx")
    return tx_list

print(block_tx_list().json())


# ---------------------------------------transactions----------------------------------

# get the information of the transaction
def tx_info():
    tx_info = requests.get("https://chain.api.btc.com/v3/tx/0eab89a271380b09987bcee5258fca91f28df4dadcedf892658b9bc261050d96?verbose=3")
    return tx_info

print(tx_info().json())


# get the information of the unconfirmed transactions
def unconfirmed_tx():
    uncon_tx = requests.get("https://chain.api.btc.com/v3/tx/unconfirmed");
    return uncon_tx

print(unconfirmed_tx().json())


# get the summery infomation of the unconfirmed transactions
def sum_unconfirmed_tx():
    sum_uncon_tx = requests.get("https://chain.api.btc.com/v3/tx/unconfirmed/summary")
    return sum_uncon_tx

print(sum_unconfirmed_tx().json())



# ---------------------------------------addresses--------------------------------------
# get the address info 
def addr():
    addr_info = requests.get("https://chain.api.btc.com/v3/address/15urYnyeJe3gwbGJ74wcX89Tz7ZtsFDVew")
    return addr_info

print(addr().json())

# get the address transactions
def addr_tx():
    address_tx = requests.get("https://chain.api.btc.com/v3/address/15urYnyeJe3gwbGJ74wcX89Tz7ZtsFDVew/tx")
    return address_tx

print(addr_tx().json())

# get the address unspend transaction
def addr_unspent_tx():
    addresss_unspent_tx = requests.get("https://chain.api.btc.com/v3/address/15urYnyeJe3gwbGJ74wcX89Tz7ZtsFDVew/unspent")
    return addresss_unspent_tx

print(addr_unspent_tx().json())
    

