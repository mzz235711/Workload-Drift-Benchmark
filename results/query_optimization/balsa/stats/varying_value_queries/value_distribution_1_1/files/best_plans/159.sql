/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<131 AND p.CommentCount>9 AND p.CommentCount<24 AND u.DownVotes>61 AND u.DownVotes<858 AND v.CreationDate>'2010-09-17 08:27:37'::timestamp AND v.CreationDate<'2012-02-09 12:33:08'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2010-07-26 04:22:29'::timestamp AND b.Date<'2013-01-09 08:36:56'::timestamp;

