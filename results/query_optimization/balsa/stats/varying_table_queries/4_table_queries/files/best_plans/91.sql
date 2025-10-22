/*+ HashJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND b.Date<='2014-09-06 13:40:25'::timestamp AND u.Views>=0 AND u.Views<=462 AND u.UpVotes>=0 AND u.CreationDate>='2011-08-02 13:43:09'::timestamp;

