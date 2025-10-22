/*+ HashJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<12 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>495 AND u.DownVotes<1684 AND v.CreationDate>'2010-01-08 11:27:56'::timestamp AND v.CreationDate<'2013-06-01 11:45:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2012-11-19 09:57:00'::timestamp AND b.Date<'2013-07-19 00:45:24'::timestamp;

