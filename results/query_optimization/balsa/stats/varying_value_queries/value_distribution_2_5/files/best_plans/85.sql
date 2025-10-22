/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<135 AND p.CommentCount>14 AND p.CommentCount<19 AND u.DownVotes>190 AND u.DownVotes<1884 AND v.CreationDate>'2010-06-24 17:48:17'::timestamp AND v.CreationDate<'2013-01-27 13:02:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-11-27 19:35:07'::timestamp AND b.Date<'2014-06-09 23:38:28'::timestamp;

