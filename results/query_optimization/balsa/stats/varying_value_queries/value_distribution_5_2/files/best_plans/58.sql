/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<142 AND p.CommentCount>11 AND p.CommentCount<37 AND u.DownVotes>307 AND u.DownVotes<776 AND v.CreationDate>'2012-07-12 06:09:28'::timestamp AND v.CreationDate<'2014-07-31 09:30:06'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-11-17 19:58:54'::timestamp AND b.Date<'2013-12-26 19:49:34'::timestamp;

