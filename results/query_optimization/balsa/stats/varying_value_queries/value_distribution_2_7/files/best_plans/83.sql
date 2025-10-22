/*+ MergeJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<29 AND p.CommentCount>1 AND p.CommentCount<8 AND u.DownVotes>54 AND u.DownVotes<395 AND v.CreationDate>'2009-09-09 14:01:10'::timestamp AND v.CreationDate<'2011-08-08 01:53:56'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2013-04-14 05:57:08'::timestamp AND b.Date<'2014-03-04 16:38:07'::timestamp;

