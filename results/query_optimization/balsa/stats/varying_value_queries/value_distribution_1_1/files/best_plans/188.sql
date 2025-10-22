/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<22 AND p.CommentCount>3 AND p.CommentCount<32 AND u.DownVotes>269 AND u.DownVotes<539 AND v.CreationDate>'2011-12-08 08:53:33'::timestamp AND v.CreationDate<'2014-02-14 16:08:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2012-11-07 09:34:32'::timestamp AND b.Date<'2014-04-11 00:57:19'::timestamp;

