/*+ MergeJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<104 AND p.CommentCount>10 AND p.CommentCount<44 AND u.DownVotes>458 AND u.DownVotes<1546 AND v.CreationDate>'2011-08-03 02:32:34'::timestamp AND v.CreationDate<'2013-12-02 12:22:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2014-03-25 06:15:00'::timestamp AND b.Date<'2014-08-04 16:11:19'::timestamp;

