/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<188 AND p.CommentCount>4 AND p.CommentCount<9 AND u.DownVotes>508 AND u.DownVotes<1073 AND v.CreationDate>'2011-09-05 02:38:43'::timestamp AND v.CreationDate<'2012-05-06 14:13:10'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-07-28 12:28:47'::timestamp AND b.Date<'2012-11-20 18:52:57'::timestamp;

