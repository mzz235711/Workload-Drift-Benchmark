/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<148 AND p.CommentCount>1 AND p.CommentCount<42 AND u.DownVotes>215 AND u.DownVotes<693 AND v.CreationDate>'2009-11-15 08:55:32'::timestamp AND v.CreationDate<'2011-07-16 04:59:08'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2010-11-04 15:33:54'::timestamp AND b.Date<'2013-10-03 10:01:07'::timestamp;

