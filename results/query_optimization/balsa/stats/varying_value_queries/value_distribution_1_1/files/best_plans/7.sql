/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(p u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((v ((p u) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>42 AND p.Score<100 AND p.CommentCount>15 AND p.CommentCount<23 AND u.DownVotes>90 AND u.DownVotes<685 AND v.CreationDate>'2009-04-06 02:57:41'::timestamp AND v.CreationDate<'2013-09-16 21:16:27'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2014-04-10 16:34:21'::timestamp AND b.Date<'2014-08-12 17:51:48'::timestamp;

