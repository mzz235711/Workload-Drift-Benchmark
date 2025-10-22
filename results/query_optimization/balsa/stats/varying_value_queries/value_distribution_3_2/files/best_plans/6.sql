/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<50 AND p.CommentCount>7 AND p.CommentCount<18 AND u.DownVotes>552 AND u.DownVotes<1623 AND v.CreationDate>'2012-03-17 22:28:22'::timestamp AND v.CreationDate<'2013-04-01 16:35:43'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-07-21 09:22:26'::timestamp AND b.Date<'2011-12-08 22:09:47'::timestamp;

