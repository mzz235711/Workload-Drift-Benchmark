/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<32 AND u.DownVotes>32 AND u.DownVotes<243 AND v.CreationDate>'2009-12-24 11:32:05'::timestamp AND v.CreationDate<'2011-09-22 11:23:03'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-03-28 21:52:18'::timestamp AND b.Date<'2012-01-02 08:00:51'::timestamp;

