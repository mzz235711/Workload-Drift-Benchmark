/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<14 AND p.CommentCount>1 AND p.CommentCount<24 AND u.DownVotes>631 AND u.DownVotes<1256 AND v.CreationDate>'2010-02-04 06:07:30'::timestamp AND v.CreationDate<'2013-06-01 07:00:19'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-01-25 03:43:48'::timestamp AND b.Date<'2014-08-28 13:38:05'::timestamp;

