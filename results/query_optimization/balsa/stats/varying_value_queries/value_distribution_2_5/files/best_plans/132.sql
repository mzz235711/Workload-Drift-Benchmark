/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<3 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>319 AND u.DownVotes<830 AND v.CreationDate>'2010-09-10 22:17:58'::timestamp AND v.CreationDate<'2013-07-22 00:10:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-02-05 19:24:04'::timestamp AND b.Date<'2012-08-06 18:59:19'::timestamp;

