/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<177 AND p.CommentCount>3 AND p.CommentCount<12 AND u.DownVotes>102 AND u.DownVotes<1216 AND v.CreationDate>'2010-04-15 04:05:02'::timestamp AND v.CreationDate<'2012-12-12 13:35:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2011-10-03 15:27:39'::timestamp AND b.Date<'2014-01-22 03:57:22'::timestamp;

