/*+ MergeJoin(b p u v)
 MergeJoin(p u v)
 MergeJoin(p u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<158 AND p.CommentCount>8 AND p.CommentCount<14 AND u.DownVotes>713 AND u.DownVotes<1803 AND v.CreationDate>'2010-05-11 22:11:00'::timestamp AND v.CreationDate<'2013-12-10 10:52:44'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2012-02-22 12:10:43'::timestamp AND b.Date<'2014-07-10 07:04:22'::timestamp;

