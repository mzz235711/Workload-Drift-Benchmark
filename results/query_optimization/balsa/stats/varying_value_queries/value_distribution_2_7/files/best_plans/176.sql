/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<53 AND p.CommentCount>1 AND p.CommentCount<15 AND u.DownVotes>394 AND u.DownVotes<1434 AND v.CreationDate>'2010-06-18 15:20:51'::timestamp AND v.CreationDate<'2011-04-07 12:51:02'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2010-10-08 17:16:46'::timestamp AND b.Date<'2014-07-01 11:27:20'::timestamp;

