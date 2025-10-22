/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<27 AND p.CommentCount>7 AND p.CommentCount<37 AND u.DownVotes>279 AND u.DownVotes<489 AND v.CreationDate>'2011-07-25 11:47:51'::timestamp AND v.CreationDate<'2012-05-04 10:27:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-07-29 08:13:24'::timestamp AND b.Date<'2011-12-06 17:56:45'::timestamp;

