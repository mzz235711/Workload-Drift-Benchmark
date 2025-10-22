/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<150 AND p.CommentCount>24 AND p.CommentCount<31 AND u.DownVotes>45 AND u.DownVotes<370 AND v.CreationDate>'2011-09-22 09:12:47'::timestamp AND v.CreationDate<'2014-07-29 10:32:34'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-11-14 04:45:51'::timestamp AND b.Date<'2013-09-08 23:58:14'::timestamp;

