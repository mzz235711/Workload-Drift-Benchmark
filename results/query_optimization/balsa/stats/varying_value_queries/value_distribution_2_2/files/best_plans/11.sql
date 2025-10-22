/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>62 AND p.Score<169 AND p.CommentCount>27 AND p.CommentCount<33 AND u.DownVotes>97 AND u.DownVotes<155 AND v.CreationDate>'2011-09-05 04:37:31'::timestamp AND v.CreationDate<'2012-09-20 11:41:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-08-09 13:23:53'::timestamp AND b.Date<'2011-11-26 04:54:22'::timestamp;

