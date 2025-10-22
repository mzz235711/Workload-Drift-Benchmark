/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<93 AND p.CommentCount>10 AND p.CommentCount<25 AND u.DownVotes>368 AND u.DownVotes<876 AND v.CreationDate>'2012-07-18 17:13:33'::timestamp AND v.CreationDate<'2012-12-16 12:31:02'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-02-07 16:12:34'::timestamp AND b.Date<'2012-09-27 19:58:49'::timestamp;

