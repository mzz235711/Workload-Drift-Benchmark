/*+ NestLoop(u p b v)
 MergeJoin(u p b)
 MergeJoin(u p)
 SeqScan(u)
 SeqScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>97 AND p.Score<165 AND p.CommentCount>13 AND p.CommentCount<40 AND u.DownVotes>67 AND u.DownVotes<1013 AND v.CreationDate>'2010-06-06 23:15:25'::timestamp AND v.CreationDate<'2014-01-09 17:51:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2010-10-23 11:49:02'::timestamp AND b.Date<'2012-12-27 03:28:25'::timestamp;

