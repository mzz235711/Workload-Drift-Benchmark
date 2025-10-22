/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<33 AND p.CommentCount>3 AND p.CommentCount<13 AND u.DownVotes>68 AND u.DownVotes<290 AND v.CreationDate>'2011-09-12 22:57:08'::timestamp AND v.CreationDate<'2014-08-23 12:16:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-09-28 07:53:37'::timestamp AND b.Date<'2012-08-28 08:47:32'::timestamp;

