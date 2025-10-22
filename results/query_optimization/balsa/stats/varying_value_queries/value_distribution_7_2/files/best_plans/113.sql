/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<86 AND p.CommentCount>9 AND p.CommentCount<27 AND u.DownVotes>292 AND u.DownVotes<790 AND v.CreationDate>'2009-12-14 04:36:43'::timestamp AND v.CreationDate<'2013-11-22 13:49:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-08-12 07:16:54'::timestamp AND b.Date<'2012-06-27 14:50:40'::timestamp;

