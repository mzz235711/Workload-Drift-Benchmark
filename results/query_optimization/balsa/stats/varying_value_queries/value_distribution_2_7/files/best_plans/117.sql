/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<150 AND p.CommentCount>12 AND p.CommentCount<29 AND u.DownVotes>186 AND u.DownVotes<879 AND v.CreationDate>'2011-06-22 19:04:40'::timestamp AND v.CreationDate<'2014-05-21 16:20:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-10-23 02:43:03'::timestamp AND b.Date<'2013-06-29 16:44:55'::timestamp;

