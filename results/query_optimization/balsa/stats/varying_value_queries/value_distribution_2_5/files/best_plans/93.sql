/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>75 AND p.Score<190 AND p.CommentCount>2 AND p.CommentCount<39 AND u.DownVotes>32 AND u.DownVotes<810 AND v.CreationDate>'2012-01-02 01:59:30'::timestamp AND v.CreationDate<'2013-02-25 04:47:58'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2013-11-07 17:28:27'::timestamp AND b.Date<'2014-09-04 10:16:12'::timestamp;

