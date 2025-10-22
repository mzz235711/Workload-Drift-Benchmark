/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<115 AND p.CommentCount>0 AND p.CommentCount<25 AND u.DownVotes>634 AND u.DownVotes<878 AND v.CreationDate>'2010-09-06 13:02:41'::timestamp AND v.CreationDate<'2011-12-31 15:38:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2012-09-10 15:47:43'::timestamp AND b.Date<'2014-07-13 22:25:27'::timestamp;

