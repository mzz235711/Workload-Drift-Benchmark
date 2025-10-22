/*+ HashJoin(p u c v b)
 HashJoin(p u c v)
 HashJoin(p u c)
 HashJoin(u c)
 SeqScan(p)
 IndexScan(u)
 IndexScan(c)
 SeqScan(v)
 SeqScan(b)
 Leading((((p (u c)) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.AnswerCount<=4 AND p.CreationDate>='2010-10-26 10:20:01'::timestamp AND p.CreationDate<='2014-09-10 18:52:32'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation<=181 AND u.Views>=0 AND u.Views<=21 AND u.DownVotes<=0 AND u.UpVotes<=30;

