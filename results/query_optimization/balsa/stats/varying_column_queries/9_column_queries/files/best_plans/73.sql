/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-26 19:55:09'::timestamp AND c.CreationDate<='2014-09-13 18:41:00'::timestamp AND p.PostTypeId=1 AND p.AnswerCount<=7 AND p.CommentCount<=15 AND u.Views=8 AND u.DownVotes>=0 AND u.DownVotes<=0;

