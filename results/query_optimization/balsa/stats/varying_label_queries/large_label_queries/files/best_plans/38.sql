/*+ HashJoin(b v p u)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-27 16:00:22'::timestamp AND b.Date>='2010-08-17 12:53:45'::timestamp AND b.Date<='2014-09-04 17:23:47'::timestamp AND u.Views<=59 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-03 18:12:55'::timestamp;

