/*+ NestLoop(p u b v)
 MergeJoin(p u b)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>75 AND p.Score<91 AND p.CommentCount>9 AND p.CommentCount<25 AND u.DownVotes>238 AND u.DownVotes<1377 AND v.CreationDate>'2012-10-26 23:15:10'::timestamp AND v.CreationDate<'2012-11-05 21:10:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-08-28 07:54:07'::timestamp AND b.Date<'2012-07-24 09:39:34'::timestamp;

