/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<112 AND p.CommentCount>1 AND p.CommentCount<11 AND u.DownVotes>21 AND u.DownVotes<652 AND v.CreationDate>'2012-01-14 11:24:56'::timestamp AND v.CreationDate<'2012-12-20 06:49:52'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-07-04 14:43:29'::timestamp AND b.Date<'2013-08-11 09:57:23'::timestamp;

