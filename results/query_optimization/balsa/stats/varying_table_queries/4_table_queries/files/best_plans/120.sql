/*+ MergeJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-27 14:27:12'::timestamp AND b.Date>='2010-07-19 19:39:10'::timestamp AND u.Reputation<=1460 AND u.Views<=34 AND u.CreationDate>='2010-07-20 07:08:11'::timestamp;

