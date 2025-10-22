/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>99 AND p.Score<165 AND p.CommentCount>10 AND p.CommentCount<27 AND u.DownVotes>764 AND u.DownVotes<912 AND v.CreationDate>'2011-03-11 19:09:29'::timestamp AND v.CreationDate<'2011-11-03 17:42:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-10-16 05:15:29'::timestamp AND b.Date<'2013-01-26 05:49:33'::timestamp;

