/*+ HashJoin(v b u ph c)
 MergeJoin(v b u ph)
 MergeJoin(b u ph)
 MergeJoin(b u)
 IndexScan(v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(ph)
 IndexScan(c)
 Leading(((v ((b u) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND c.CreationDate<='2014-09-07 16:15:25'::timestamp AND ph.PostHistoryTypeId=5 AND b.Date>='2010-07-20 14:19:12'::timestamp AND b.Date<='2014-08-14 10:12:18'::timestamp AND u.Views<=34;

