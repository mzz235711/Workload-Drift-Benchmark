/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<171 AND p.CommentCount>1 AND p.CommentCount<41 AND u.DownVotes>279 AND u.DownVotes<1392 AND v.CreationDate>'2009-03-13 09:30:54'::timestamp AND v.CreationDate<'2013-01-10 13:51:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2012-02-25 14:42:45'::timestamp AND b.Date<'2014-06-05 16:29:26'::timestamp;

