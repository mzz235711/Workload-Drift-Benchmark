/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>27 AND p.Score<80 AND p.CommentCount>0 AND p.CommentCount<33 AND u.DownVotes>4 AND u.DownVotes<997 AND v.CreationDate>'2012-02-07 10:06:26'::timestamp AND v.CreationDate<'2013-04-15 09:00:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-02-26 16:29:32'::timestamp AND b.Date<'2011-11-30 14:16:21'::timestamp;

