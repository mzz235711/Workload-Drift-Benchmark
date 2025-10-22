/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>100 AND p.Score<175 AND p.CommentCount>1 AND p.CommentCount<26 AND u.DownVotes>506 AND u.DownVotes<1585 AND v.CreationDate>'2010-07-22 21:10:14'::timestamp AND v.CreationDate<'2013-02-22 22:16:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-09-25 12:07:17'::timestamp AND b.Date<'2014-08-19 04:07:11'::timestamp;

