/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<158 AND p.CommentCount>24 AND p.CommentCount<44 AND u.DownVotes>180 AND u.DownVotes<770 AND v.CreationDate>'2011-07-19 09:46:14'::timestamp AND v.CreationDate<'2013-05-03 09:27:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-11-03 16:27:08'::timestamp AND b.Date<'2013-03-26 06:49:04'::timestamp;

