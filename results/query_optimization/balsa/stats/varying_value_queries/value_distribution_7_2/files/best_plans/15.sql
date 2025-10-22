/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<73 AND p.CommentCount>10 AND p.CommentCount<25 AND u.DownVotes>296 AND u.DownVotes<1671 AND v.CreationDate>'2009-12-04 12:52:47'::timestamp AND v.CreationDate<'2014-06-26 13:33:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-09-04 09:50:35'::timestamp AND b.Date<'2014-08-09 07:18:32'::timestamp;

