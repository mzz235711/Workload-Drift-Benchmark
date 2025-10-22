/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>105 AND p.Score<180 AND p.CommentCount>6 AND p.CommentCount<44 AND u.DownVotes>37 AND u.DownVotes<1665 AND v.CreationDate>'2009-09-18 08:51:15'::timestamp AND v.CreationDate<'2012-11-18 02:07:25'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2012-07-31 21:21:12'::timestamp AND b.Date<'2012-10-05 00:07:56'::timestamp;

