/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<114 AND p.CommentCount>12 AND p.CommentCount<22 AND u.DownVotes>375 AND u.DownVotes<1845 AND v.CreationDate>'2009-08-04 21:41:16'::timestamp AND v.CreationDate<'2013-04-04 13:37:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-07-30 03:14:40'::timestamp AND b.Date<'2014-04-02 15:20:11'::timestamp;

