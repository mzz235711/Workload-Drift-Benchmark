/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-07 18:28:52'::timestamp AND ph.PostHistoryTypeId=5 AND u.Views<=51 AND u.CreationDate>='2010-07-28 12:51:37'::timestamp;

