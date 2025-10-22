/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>114 AND p.Score<191 AND p.CommentCount>9 AND p.CommentCount<21 AND u.DownVotes>117 AND u.DownVotes<1699 AND v.CreationDate>'2010-03-31 21:45:53'::timestamp AND v.CreationDate<'2014-02-13 07:27:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2013-03-09 09:13:49'::timestamp AND b.Date<'2013-10-23 17:11:08'::timestamp;

