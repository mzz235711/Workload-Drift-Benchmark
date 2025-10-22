/*+ MergeJoin(b p u v)
 MergeJoin(p u v)
 MergeJoin(p u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<37 AND p.CommentCount>0 AND p.CommentCount<11 AND u.DownVotes>671 AND u.DownVotes<943 AND v.CreationDate>'2010-05-18 22:28:45'::timestamp AND v.CreationDate<'2014-04-22 17:58:18'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<9 AND b.Date>'2011-10-28 09:09:03'::timestamp AND b.Date<'2013-08-31 00:27:46'::timestamp;

