/*+ NestLoop(p u v b)
 NestLoop(p u v)
 NestLoop(p u)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>122 AND p.Score<161 AND p.CommentCount>2 AND p.CommentCount<20 AND u.DownVotes>32 AND u.DownVotes<1732 AND v.CreationDate>'2010-09-28 04:26:38'::timestamp AND v.CreationDate<'2013-06-08 21:44:27'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2012-07-09 13:06:16'::timestamp AND b.Date<'2013-02-16 20:20:27'::timestamp;

