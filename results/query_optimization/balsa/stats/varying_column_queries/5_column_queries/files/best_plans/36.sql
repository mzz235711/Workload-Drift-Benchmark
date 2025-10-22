/*+ MergeJoin(v u b c)
 HashJoin(u b c)
 HashJoin(u b)
 IndexScan(v)
 SeqScan(u)
 SeqScan(b)
 IndexScan(c)
 Leading((v ((u b) c))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 19:39:10'::timestamp AND b.Date<='2014-08-28 08:50:39'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

