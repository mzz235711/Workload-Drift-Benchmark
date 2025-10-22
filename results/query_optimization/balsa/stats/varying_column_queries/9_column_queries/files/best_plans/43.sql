/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount=1 AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.CreationDate>='2010-08-13 09:50:51'::timestamp AND p.CreationDate<='2014-09-11 15:57:22'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes<=1;

