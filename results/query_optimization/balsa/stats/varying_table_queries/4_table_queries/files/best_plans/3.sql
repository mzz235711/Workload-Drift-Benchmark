/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 MergeJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-13 02:45:09'::timestamp AND b.Date>='2010-08-01 14:14:55'::timestamp;

