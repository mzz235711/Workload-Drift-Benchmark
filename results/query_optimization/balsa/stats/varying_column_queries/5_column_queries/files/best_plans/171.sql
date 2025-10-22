/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=1 AND u.Reputation>=1 AND u.Reputation<=452 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-25 22:57:20'::timestamp;

