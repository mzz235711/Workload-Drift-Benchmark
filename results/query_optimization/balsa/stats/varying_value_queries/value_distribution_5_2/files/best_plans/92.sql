/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<77 AND p.CommentCount>0 AND p.CommentCount<32 AND u.DownVotes>23 AND u.DownVotes<703 AND v.CreationDate>'2011-01-01 05:42:45'::timestamp AND v.CreationDate<'2014-09-05 12:17:09'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-10-07 02:29:10'::timestamp AND b.Date<'2014-04-15 15:01:19'::timestamp;

