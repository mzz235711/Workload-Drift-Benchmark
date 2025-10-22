/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>95 AND p.Score<134 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>194 AND u.DownVotes<1489 AND v.CreationDate>'2009-09-18 16:10:45'::timestamp AND v.CreationDate<'2014-02-08 00:29:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-08-14 20:24:14'::timestamp AND b.Date<'2013-10-24 17:09:52'::timestamp;

