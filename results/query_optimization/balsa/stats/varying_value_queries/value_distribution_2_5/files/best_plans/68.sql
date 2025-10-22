/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<32 AND p.CommentCount>0 AND p.CommentCount<29 AND u.DownVotes>581 AND u.DownVotes<1780 AND v.CreationDate>'2010-08-01 12:43:21'::timestamp AND v.CreationDate<'2011-08-29 03:15:47'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2010-12-28 17:54:15'::timestamp AND b.Date<'2011-04-17 23:30:28'::timestamp;

