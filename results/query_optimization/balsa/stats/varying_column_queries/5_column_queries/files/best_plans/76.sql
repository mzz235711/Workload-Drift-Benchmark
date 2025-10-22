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
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND ph.CreationDate>='2010-10-15 20:17:13'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation=1 AND u.DownVotes<=0;

