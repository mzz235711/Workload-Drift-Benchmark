/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<164 AND p.CommentCount>5 AND p.CommentCount<16 AND u.DownVotes>88 AND u.DownVotes<176 AND v.CreationDate>'2012-03-15 11:38:57'::timestamp AND v.CreationDate<'2014-01-30 19:00:40'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2010-09-16 22:47:06'::timestamp AND b.Date<'2013-07-02 11:22:29'::timestamp;

